.class public final synthetic Lcom/miui/gamebooster/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh7/g$b;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/service/b;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iput-object p2, p0, Lcom/miui/gamebooster/service/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/b;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/b;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->c(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;ZZ)V

    return-void
.end method
