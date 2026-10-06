.class public final synthetic Ld9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamecenter/ui/GameCenterMainView;

.field public final synthetic b:Lb9/f;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld9/d;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    iput-object p2, p0, Ld9/d;->b:Lb9/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ld9/d;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    iget-object v1, p0, Ld9/d;->b:Lb9/f;

    invoke-static {v0, v1}, Lcom/miui/gamecenter/ui/GameCenterMainView$c;->d(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f;)V

    return-void
.end method
