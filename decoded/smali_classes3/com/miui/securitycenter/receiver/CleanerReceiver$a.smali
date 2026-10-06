.class Lcom/miui/securitycenter/receiver/CleanerReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/receiver/CleanerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securitycenter/receiver/CleanerReceiver;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/receiver/CleanerReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/receiver/CleanerReceiver$a;->b:Lcom/miui/securitycenter/receiver/CleanerReceiver;

    iput-object p2, p0, Lcom/miui/securitycenter/receiver/CleanerReceiver$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lef/x;->o0(J)V

    iget-object v0, p0, Lcom/miui/securitycenter/receiver/CleanerReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lof/g;->a(Landroid/content/Context;)V

    return-void
.end method
