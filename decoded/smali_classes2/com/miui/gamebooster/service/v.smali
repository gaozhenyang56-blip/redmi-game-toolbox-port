.class public final synthetic Lcom/miui/gamebooster/service/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/service/v;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/v;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->o(Lcom/miui/gamebooster/service/GameBoosterService;)V

    return-void
.end method
