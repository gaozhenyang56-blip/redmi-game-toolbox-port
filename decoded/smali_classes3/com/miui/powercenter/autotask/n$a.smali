.class Lcom/miui/powercenter/autotask/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/n;->i(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lcom/miui/powercenter/autotask/n$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/powercenter/autotask/AutoTask;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/miui/powercenter/autotask/n$c;


# direct methods
.method constructor <init>(ILcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lcom/miui/powercenter/autotask/n$c;)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/n$a;->a:I

    iput-object p2, p0, Lcom/miui/powercenter/autotask/n$a;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iput-object p3, p0, Lcom/miui/powercenter/autotask/n$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/powercenter/autotask/n$a;->d:Lcom/miui/powercenter/autotask/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget v0, p0, Lcom/miui/powercenter/autotask/n$a;->a:I

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/miui/powercenter/autotask/n$a;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/n$a;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/autotask/n$a;->c:Ljava/lang/String;

    const-string v2, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v1, :cond_3

    const/4 p2, 0x3

    goto :goto_1

    :cond_3
    sget p2, Lcom/miui/powercenter/autotask/AutoTask;->GPS_OFF:I

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/n$a;->b:Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/n$a;->c:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    iget-object p2, p0, Lcom/miui/powercenter/autotask/n$a;->d:Lcom/miui/powercenter/autotask/n$c;

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/miui/powercenter/autotask/n$a;->c:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/miui/powercenter/autotask/n$c;->a(Ljava/lang/String;)V

    :cond_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
