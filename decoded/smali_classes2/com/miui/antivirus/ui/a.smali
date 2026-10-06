.class public Lcom/miui/antivirus/ui/a;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f130455

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0e04bc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/a;->a:Landroid/view/View;

    const v0, 0x7f0b029e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/antivirus/ui/a;->c:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/antivirus/ui/a;->a:Landroid/view/View;

    const v0, 0x7f0b0778

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/antivirus/ui/a;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/antivirus/ui/a;->a:Landroid/view/View;

    const v0, 0x7f0b0808

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/miui/antivirus/ui/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h(Landroid/text/Spanned;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
