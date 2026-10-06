.class public final synthetic Lcom/miui/gamebooster/service/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService$n;

.field public final synthetic b:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService$n;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/service/p;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$n;

    iput-object p2, p0, Lcom/miui/gamebooster/service/p;->b:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/p;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$n;

    iget-object v1, p0, Lcom/miui/gamebooster/service/p;->b:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/DockWindowManagerService$n;->v1(Lcom/miui/gamebooster/service/DockWindowManagerService$n;Landroid/content/ComponentName;)V

    return-void
.end method
