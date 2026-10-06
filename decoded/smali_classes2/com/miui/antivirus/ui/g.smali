.class Lcom/miui/antivirus/ui/g;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cetus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f130455

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1, v1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0e04d1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/g;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/g;->a:Landroid/view/View;

    const v0, 0x7f0b0808

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/miui/antivirus/ui/g;->b:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/miui/antivirus/ui/g;->a:Landroid/view/View;

    const v0, 0x7f0b0778

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/antivirus/ui/g;->c:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/antivirus/ui/g;->a:Landroid/view/View;

    const v0, 0x7f0b0bc4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/antivirus/ui/g;->d:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/miui/antivirus/ui/g;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/ui/g;->e:I

    return v0
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/g;->b:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/g;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/g;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public i(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/miui/antivirus/ui/g;->e:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/miui/antivirus/ui/g;->a:Landroid/view/View;

    const v2, 0x7f0b09a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121701

    invoke-static {v2, v3}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/miui/antivirus/ui/g;->a:Landroid/view/View;

    const v2, 0x7f0b09a1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/antivirus/ui/g;->a:Landroid/view/View;

    const v2, 0x7f0b09a8

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/antivirus/ui/g;->a:Landroid/view/View;

    const v2, 0x7f0b09a6

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/miui/antivirus/ui/g;->a:Landroid/view/View;

    const v2, 0x7f0b09a4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/g;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
