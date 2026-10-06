.class Lmiuix/provision/a$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/provision/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/a;


# direct methods
.method constructor <init>(Lmiuix/provision/a;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/a$c;->a:Lmiuix/provision/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miui.action.PROVISION_ANIM_END"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/provision/a$c;->a:Lmiuix/provision/a;

    invoke-static {p1}, Lmiuix/provision/a;->c(Lmiuix/provision/a;)Lmiuix/provision/a$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/provision/a$c;->a:Lmiuix/provision/a;

    invoke-static {p1}, Lmiuix/provision/a;->c(Lmiuix/provision/a;)Lmiuix/provision/a$d;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/provision/a$d;->I()V

    :cond_0
    return-void
.end method
