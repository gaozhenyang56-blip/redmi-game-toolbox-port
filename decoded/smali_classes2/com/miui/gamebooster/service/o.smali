.class public final synthetic Lcom/miui/gamebooster/service/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/service/o;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/o;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->b(Landroid/content/Intent;)V

    return-void
.end method
