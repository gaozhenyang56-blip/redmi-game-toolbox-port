.class Lcom/miui/powercenter/autotask/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/n;->h(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/miui/powercenter/autotask/AutoTask;

.field final synthetic c:Lcom/miui/powercenter/autotask/n$c;


# direct methods
.method constructor <init>([ILcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/n$b;->a:[I

    iput-object p2, p0, Lcom/miui/powercenter/autotask/n$b;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iput-object p3, p0, Lcom/miui/powercenter/autotask/n$b;->c:Lcom/miui/powercenter/autotask/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/n$b;->a:[I

    aget p2, v0, p2

    const-string v0, "auto_clean_memory"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/miui/powercenter/autotask/n$b;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p2, v0}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/n$b;->b:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lcom/miui/powercenter/autotask/n$b;->c:Lcom/miui/powercenter/autotask/n$c;

    invoke-interface {p2, v0}, Lcom/miui/powercenter/autotask/n$c;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
