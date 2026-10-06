.class Lv8/c$b$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv8/c$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lv8/c$b;


# direct methods
.method constructor <init>(Lv8/c$b;JJ)V
    .locals 0

    iput-object p1, p0, Lv8/c$b$a;->a:Lv8/c$b;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lv8/c$b$a;->a:Lv8/c$b;

    iget-object v0, v0, Lv8/c$b;->d:Lv8/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lv8/c;->b(Lv8/c;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lv8/c$b$a;->a:Lv8/c$b;

    iget-object v0, v0, Lv8/c$b;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv8/c$b$a;->a:Lv8/c$b;

    iget-object v0, v0, Lv8/c$b;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lv8/c$b$a;->a:Lv8/c$b;

    iget-object v0, v0, Lv8/c$b;->a:Landroid/content/Context;

    const v1, 0x7f120a63

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
