.class public final synthetic Ls8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls8/h;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

.field public final synthetic d:Lcom/miui/dock/sidebar/j;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ls8/h;ZLcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Lcom/miui/dock/sidebar/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/d;->a:Ls8/h;

    iput-boolean p2, p0, Ls8/d;->b:Z

    iput-object p3, p0, Ls8/d;->c:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iput-object p4, p0, Ls8/d;->d:Lcom/miui/dock/sidebar/j;

    iput-object p5, p0, Ls8/d;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ls8/d;->a:Ls8/h;

    iget-boolean v1, p0, Ls8/d;->b:Z

    iget-object v2, p0, Ls8/d;->c:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iget-object v3, p0, Ls8/d;->d:Lcom/miui/dock/sidebar/j;

    iget-object v4, p0, Ls8/d;->e:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Ls8/h;->d(Ls8/h;ZLcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Lcom/miui/dock/sidebar/j;Landroid/view/View;)V

    return-void
.end method
