.class Ldh/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic d:Ldh/a;


# direct methods
.method constructor <init>(Ldh/a;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    iput-object p1, p0, Ldh/a$a;->d:Ldh/a;

    iput-object p2, p0, Ldh/a$a;->a:Landroid/content/Context;

    iput-object p3, p0, Ldh/a$a;->b:Landroid/content/Intent;

    iput-object p4, p0, Ldh/a$a;->c:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldh/a$a;->d:Ldh/a;

    iget-object v1, p0, Ldh/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Ldh/a$a;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Ldh/a;->a(Ldh/a;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Ldh/a$a;->c:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
