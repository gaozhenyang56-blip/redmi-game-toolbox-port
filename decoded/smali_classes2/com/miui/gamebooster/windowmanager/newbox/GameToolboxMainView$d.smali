.class Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/b$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->M(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$d;->b:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iput p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, La8/o0;->y(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$d;->b:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iget v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$d;->a:I

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->q(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;I)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
