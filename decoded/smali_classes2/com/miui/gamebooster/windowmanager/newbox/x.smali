.class public final synthetic Lcom/miui/gamebooster/windowmanager/newbox/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

.field public final synthetic b:Lcom/miui/gamebooster/model/n;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Landroid/view/ViewGroup;

.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/model/n;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->a:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->b:Lcom/miui/gamebooster/model/n;

    iput-object p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->c:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->d:Landroid/view/ViewGroup;

    iput-boolean p5, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->e:Z

    iput p6, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->a:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->b:Lcom/miui/gamebooster/model/n;

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->d:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->e:Z

    iget v5, p0, Lcom/miui/gamebooster/windowmanager/newbox/x;->f:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->h(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/model/n;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZILandroid/view/View;)V

    return-void
.end method
