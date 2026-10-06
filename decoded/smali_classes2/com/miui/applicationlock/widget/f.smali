.class public Lcom/miui/applicationlock/widget/f;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private a:Lc3/n;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILc3/n;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/f;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/applicationlock/widget/f;->a:Lc3/n;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/f;->a:Lc3/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc3/n;->d()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 7

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1302

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v5, "setBlurBehindRadius"

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {v3, v0, v5, v2, v1}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
