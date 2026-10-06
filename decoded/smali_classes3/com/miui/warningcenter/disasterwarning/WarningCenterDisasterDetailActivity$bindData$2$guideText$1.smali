.class final Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.warningcenter.disasterwarning.WarningCenterDisasterDetailActivity$bindData$2$guideText$1"
    f = "WarningCenterDisasterDetailActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

.field label:I

.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;",
            "Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;",
            "Ltj/d<",
            "-",
            "Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->Companion:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "assets"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getEventType()Lcom/miui/warningcenter/disasterwarning/model/EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/EventType;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-virtual {v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getSeverity()Lcom/miui/warningcenter/disasterwarning/model/Severity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;->getOfficialGuidance(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
