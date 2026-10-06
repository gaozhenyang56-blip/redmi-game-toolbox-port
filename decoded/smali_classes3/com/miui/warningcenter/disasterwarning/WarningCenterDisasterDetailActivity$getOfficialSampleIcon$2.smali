.class final Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getOfficialSampleIcon(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)Ljava/lang/Object;
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
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.warningcenter.disasterwarning.WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2"
    f = "WarningCenterDisasterDetailActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWarningCenterDisasterDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WarningCenterDisasterDetailActivity.kt\ncom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,237:1\n800#2,11:238\n*S KotlinDebug\n*F\n+ 1 WarningCenterDisasterDetailActivity.kt\ncom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2\n*L\n210#1:238,11\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $info:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

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
            "Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->$info:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

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

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->$info:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "warning_center_disaster_icon"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "assets.open(\"warning_center_disaster_icon\")"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljk/c;->b:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v2}, Lcom/google/gson/JsonParser;->parseReader(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v1, "parseReader(\n           \u2026            ).asJsonArray"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->$info:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/gson/JsonObject;

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getEventType()Lcom/miui/warningcenter/disasterwarning/model/EventType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/warningcenter/disasterwarning/model/EventType;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    move-object v2, p1

    :goto_1
    check-cast v2, Lcom/google/gson/JsonObject;

    if-eqz v2, :cond_4

    const-string v0, "data"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->$info:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getSeverity()Lcom/miui/warningcenter/disasterwarning/model/Severity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warningcenter/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
