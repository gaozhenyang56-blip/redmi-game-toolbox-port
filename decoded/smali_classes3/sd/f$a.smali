.class Lsd/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsd/f;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lsd/f;


# direct methods
.method constructor <init>(Lsd/f;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lsd/f$a;->d:Lsd/f;

    iput-object p2, p0, Lsd/f$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lsd/f$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lsd/f$a;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lsd/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "miui.intent.action.ACTION_QUICK_CHARGE_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lsd/f$a;->d:Lsd/f;

    iget-object v1, p0, Lsd/f$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lsd/f;->e(Lsd/f;Landroid/content/Context;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lsd/f$a;->d:Lsd/f;

    iget-object v1, p0, Lsd/f$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lsd/f$a;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lsd/f;->c(Lsd/f;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lsd/f$a;->d:Lsd/f;

    iget-object v1, p0, Lsd/f$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lsd/f;->d(Lsd/f;Landroid/content/Context;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_2
        0x1257a88e -> :sswitch_1
        0x741706da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
