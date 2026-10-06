.class public final synthetic Lcom/miui/gamebooster/windowmanager/newbox/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/windowmanager/newbox/k;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/g;->a:Lcom/miui/gamebooster/windowmanager/newbox/k;

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/g;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/g;->a:Lcom/miui/gamebooster/windowmanager/newbox/k;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/g;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/k;->h(Lcom/miui/gamebooster/windowmanager/newbox/k;Landroid/view/View;)V

    return-void
.end method
