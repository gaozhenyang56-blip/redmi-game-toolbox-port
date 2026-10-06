.class public Lcom/miui/powercenter/autotask/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/powercenter/autotask/AutoTask;

.field private c:Landroid/widget/SeekBar;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/j;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e03de

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/j;->d:Landroid/view/ViewGroup;

    const p2, 0x7f0b0a32

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/miui/powercenter/autotask/j;->c:Landroid/widget/SeekBar;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/j;->d:Landroid/view/ViewGroup;

    const v0, 0x7f0b0d20

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/j;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0b0d21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const v5, 0x7f1210dc

    invoke-virtual {v1, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/j;->b:Lcom/miui/powercenter/autotask/AutoTask;

    const-string p2, "brightness"

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->hasOperation(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/j;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/miui/powercenter/autotask/j;->c:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/autotask/j;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/j;->c:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/powercenter/autotask/j;)Lcom/miui/powercenter/autotask/AutoTask;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/j;->b:Lcom/miui/powercenter/autotask/AutoTask;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/miui/powercenter/autotask/n$c;)V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/autotask/j$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/powercenter/autotask/j$a;-><init>(Lcom/miui/powercenter/autotask/j;Lcom/miui/powercenter/autotask/n$c;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/j;->a:Landroid/content/Context;

    invoke-direct {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120339

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/j;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120341

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120302

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
