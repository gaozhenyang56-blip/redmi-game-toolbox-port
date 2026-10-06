.class Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/customview/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->N(ILn6/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$e;->b:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$e;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->h(Landroid/view/View;)V

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$e;->b:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->r(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Lcom/miui/gamebooster/customview/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->g(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, v1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->d()Lcom/miui/gamebooster/windowmanager/newbox/e0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/miui/gamebooster/windowmanager/newbox/e0;->g(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method
