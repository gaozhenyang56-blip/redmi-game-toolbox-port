.class Lv8/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv8/c;->d(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lv8/c;


# direct methods
.method constructor <init>(Lv8/c;Landroid/content/Context;Landroid/graphics/drawable/AnimatedVectorDrawable;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lv8/c$b;->d:Lv8/c;

    iput-object p2, p0, Lv8/c$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lv8/c$b;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p4, p0, Lv8/c$b;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lv8/c$b;->d:Lv8/c;

    invoke-static {p1}, Lv8/c;->a(Lv8/c;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lv8/c$b;->d:Lv8/c;

    invoke-static {p1}, Lv8/c;->a(Lv8/c;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p1, p0, Lv8/c$b;->d:Lv8/c;

    invoke-static {p1}, Lv8/c;->a(Lv8/c;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->onFinish()V

    iget-object p1, p0, Lv8/c$b;->d:Lv8/c;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lv8/c;->b(Lv8/c;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lv8/c$b;->d:Lv8/c;

    invoke-static {p1}, Lv8/c;->c(Lv8/c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gamebooster/utils/a;->g0(Ljava/lang/String;)V

    iget-object p1, p0, Lv8/c$b;->d:Lv8/c;

    iget-object v0, p0, Lv8/c$b;->a:Landroid/content/Context;

    const-string v1, "com.miui.securitycenter.gamebooster.WONDERFULL_FLOAT_MANUAL"

    invoke-virtual {p1, v0, v1}, Lv8/c;->j(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lv8/c$b;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lv8/c$b;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lv8/c$b;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lv8/c$b;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lv8/c$b;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :goto_1
    iget-object p1, p0, Lv8/c$b;->d:Lv8/c;

    new-instance v6, Lv8/c$b$a;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x20

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lv8/c$b$a;-><init>(Lv8/c$b;JJ)V

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    goto :goto_0

    :goto_2
    return-void
.end method
