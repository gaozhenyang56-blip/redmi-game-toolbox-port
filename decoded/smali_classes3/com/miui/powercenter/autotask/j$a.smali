.class Lcom/miui/powercenter/autotask/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/j;->c(Lcom/miui/powercenter/autotask/n$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/n$c;

.field final synthetic b:Lcom/miui/powercenter/autotask/j;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/j;Lcom/miui/powercenter/autotask/n$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/j$a;->b:Lcom/miui/powercenter/autotask/j;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/j$a;->a:Lcom/miui/powercenter/autotask/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "brightness"

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/powercenter/autotask/j$a;->b:Lcom/miui/powercenter/autotask/j;

    invoke-static {p2}, Lcom/miui/powercenter/autotask/j;->a(Lcom/miui/powercenter/autotask/j;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/j$a;->b:Lcom/miui/powercenter/autotask/j;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/j;->b(Lcom/miui/powercenter/autotask/j;)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lcom/miui/powercenter/autotask/j$a;->a:Lcom/miui/powercenter/autotask/n$c;

    invoke-interface {p2, p1}, Lcom/miui/powercenter/autotask/n$c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/miui/powercenter/autotask/j$a;->b:Lcom/miui/powercenter/autotask/j;

    invoke-static {p2}, Lcom/miui/powercenter/autotask/j;->b(Lcom/miui/powercenter/autotask/j;)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
