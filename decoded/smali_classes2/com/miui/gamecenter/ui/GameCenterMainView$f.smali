.class final Lcom/miui/gamecenter/ui/GameCenterMainView$f;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamecenter/ui/GameCenterMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamecenter/ui/GameCenterMainView;


# direct methods
.method constructor <init>(Lcom/miui/gamecenter/ui/GameCenterMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$f;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamecenter/ui/GameCenterMainView$f;->invoke()V

    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$f;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->i(Lcom/miui/gamecenter/ui/GameCenterMainView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->x(Lcom/miui/gamecenter/ui/GameCenterMainView;I)V

    iget-object v0, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$f;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v0}, Lcom/miui/gamecenter/ui/GameCenterMainView;->p(Lcom/miui/gamecenter/ui/GameCenterMainView;)V

    return-void
.end method
