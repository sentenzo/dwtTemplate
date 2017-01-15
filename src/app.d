import org.eclipse.swt.all;

// http://www.java2s.com/Code/Java/SWT-JFace-Eclipse/CatalogSWT-JFace-Eclipse.htm

void main ()
{
    auto display = new Display;
    auto shell = new Shell(display);
    shell.setLayout(new GridLayout(4, false));

    auto label = new Label(shell, 0);
    label.setText("Hello, DWT!");
    
    //Присобачиваем к кнопке обработчик события (закрытие окна)
    Button button = new Button(shell, SWT.PUSH);
    button.setText("EXIT");
    button.addSelectionListener(new class SelectionAdapter {
        override
        public void widgetSelected(SelectionEvent e) {
            display.dispose();
        }
    });
    
    shell.pack();
	shell.open();
	
    while (!shell.isDisposed)
        if (!display.readAndDispatch())
            display.sleep();

    display.dispose();
}