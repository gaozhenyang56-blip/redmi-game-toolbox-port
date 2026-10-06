.class public Lcom/miui/antivirus/ui/ButtonResultView;
.super Lcom/miui/antivirus/ui/e;
.source "SourceFile"


# instance fields
.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/miui/antivirus/model/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/ui/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/antivirus/ui/ButtonResultView;)Lcom/miui/antivirus/model/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->f:Lcom/miui/antivirus/model/d;

    return-object p0
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121ba0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/miui/antivirus/ui/ButtonResultView$a;

    invoke-direct {p2, p0}, Lcom/miui/antivirus/ui/ButtonResultView$a;-><init>(Lcom/miui/antivirus/ui/ButtonResultView;)V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/e;->a:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public e(Lcom/miui/antivirus/model/d;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView;->f:Lcom/miui/antivirus/model/d;

    sget-object v0, Lcom/miui/antivirus/ui/ButtonResultView$c;->a:[I

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->h()Lcom/miui/antivirus/model/d$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView;->d:Landroid/widget/Button;

    const v0, 0x7f1202c1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView;->e:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/ButtonResultView;->e:Landroid/widget/Button;

    const v0, 0x7f1202c2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121ba8

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121ba6

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/ui/ButtonResultView$b;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/ui/ButtonResultView$b;-><init>(Lcom/miui/antivirus/ui/ButtonResultView;Landroid/content/Context;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/e;->a:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    invoke-static {p1}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object p1

    invoke-virtual {p1}, Lo2/g;->c0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/model/d;

    invoke-virtual {v2}, Lcom/miui/antivirus/model/d;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_3

    iget-object p1, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100148

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/ui/ButtonResultView;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/ui/ButtonResultView;->g(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/antivirus/ui/e;->onFinishInflate()V

    const v0, 0x7f0b01d8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->d:Landroid/widget/Button;

    const v0, 0x7f0b0534

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/ButtonResultView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
