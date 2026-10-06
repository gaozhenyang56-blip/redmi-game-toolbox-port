.class public Lcom/miui/networkassistant/ui/bean/ParamsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isPreview:Z

.field private static mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNonce:Ljava/lang/String;

.field private static mOrderID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->mHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreview:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNonce(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->mNonce:Ljava/lang/String;

    return-object p0
.end method

.method public static getOrderID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->mOrderID:Ljava/lang/String;

    return-object p0
.end method

.method public static getPayParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static isPreviewEnv()Z
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreview:Z

    return v0
.end method

.method public static setNonce(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setOrderID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setPayParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->mHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public static setPreview(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreview:Z

    return-void
.end method
