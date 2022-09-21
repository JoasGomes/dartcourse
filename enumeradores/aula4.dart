enum StatusPagamento { pendente, pago, reembolsado }

void main() {
  StatusPagamento status = StatusPagamento.pago;
  print(status);
  switch (status) {
    case StatusPagamento.pendente:
      //
      break;
    case StatusPagamento.pago:
      //
      break;
    case StatusPagamento.reembolsado:
      //
      break;
  }

  print(status.index);
  print(StatusPagamento.values[1]);
}
