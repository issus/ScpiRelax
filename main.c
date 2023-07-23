/*
 * main.c
 *
 *  Created on: 2023 Jul 22 11:54:22
 *  Author: Mark
 */

#include "DAVE.h"                 //Declarations from DAVE Code Generation (includes SFR declaration)
#include "scpi/scpi.h"
#include "scpi-def.h"

extern void initialise_monitor_handles(void);

size_t SCPI_Write(scpi_t * context, const char * data, size_t len) {
	(void) context;

	tcp_write(context->user_context, data, len, 1);
	return len;
}

scpi_result_t SCPI_Flush(scpi_t * context) {
	(void) context;

	tcp_output(context->user_context);

	return SCPI_RES_OK;
}

int SCPI_Error(scpi_t * context, int_fast16_t err) {
	(void) context;

	printf("ERROR!\r\n");

	return 0;
}

scpi_result_t SCPI_Control(scpi_t * context, scpi_ctrl_name_t ctrl, scpi_reg_val_t val) {
	(void) context;

	return SCPI_RES_OK;
}

scpi_result_t SCPI_Reset(scpi_t * context) {
	(void) context;

	printf("** RESET COMMAND\r\n");

	// todo: Implement instrument settings reset.

	return SCPI_RES_OK;
}

static err_t client_recv(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err) {
	char buffer[1024] = {0};

	// if pbuf isnt NULL, we have received data.
	if (p != NULL) {
		pbuf_copy_partial(p, buffer, p->len, 0);

		tcp_recved(pcb, p->tot_len);

		SCPI_Input(&scpi_context, buffer, strlen(buffer));

		pbuf_free(p);
	}
	// if pbuf is NULL, then the remote host closed the connection
	else if (err == ERR_OK) {
		tcp_arg(pcb, NULL);
		tcp_sent(pcb, NULL);
		tcp_recv(pcb, NULL);
		tcp_close(pcb);
	}

	return ERR_OK;
}

static err_t client_accept(void *arg, struct tcp_pcb *newpcb, err_t err) {
	tcp_recv(newpcb, client_recv);

	printf("** NEW CONNECTION\r\n");

	scpi_context.user_context = newpcb;

	return ERR_OK;
}

/**

 * @brief main() - Application entry point
 *
 * <b>Details of function</b><br>
 * This routine is the application entry point. It is invoked by the device startup code. It is responsible for
 * invoking the APP initialization dispatcher routine - DAVE_Init() and hosting the place-holder for user application
 * code.
 */

int main(void)
{
  DAVE_STATUS_t status;

  status = DAVE_Init();           /* Initialization of DAVE APPs  */
  initialise_monitor_handles();

  printf("STARTUP\r\n");


  if (status != DAVE_STATUS_SUCCESS)
  {
    /* Placeholder for error handler code. The while loop below can be replaced with an user error handler. */
    XMC_DEBUG("DAVE APPs initialization failed\n");

    while(1U)
    {

    }
  }

  struct tcp_pcb *pcb;
  pcb = tcp_new();
  tcp_bind(pcb, IP_ADDR_ANY, 5025);
  pcb = tcp_listen(pcb);
  tcp_accept(pcb, client_accept);

  scpi_context.user_context = pcb;

  SCPI_Init(&scpi_context,
		  scpi_commands,
		  &scpi_interface,
		  scpi_units_def,
		  SCPI_IDN1, SCPI_IDN2, SCPI_IDN3, SCPI_IDN4,
		  scpi_input_buffer, SCPI_INPUT_BUFFER_LENGTH,
		  scpi_error_queue_data, SCPI_ERROR_QUEUE_SIZE);


  /* Placeholder for user application code. The while loop below can be replaced with user application code. */
  while(1U)
  {
	  sys_check_timeouts();
  }
}
