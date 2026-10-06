.class Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->o0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$a;->b:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    iput-object p2, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$a;->b:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->I(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$a;->b:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->o8(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
