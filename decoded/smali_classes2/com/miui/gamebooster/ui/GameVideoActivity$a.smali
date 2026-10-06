.class Lcom/miui/gamebooster/ui/GameVideoActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$a;->a:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_download_click"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$a;->a:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameVideoActivity;->f0(Lcom/miui/gamebooster/ui/GameVideoActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
