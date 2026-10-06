.class Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$b;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$b;->a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "com.tencent.av.ui.VideoInviteLock"

    const-string v0, "QQ\u8bed\u97f3"

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.tencent.av.ui.VideoInviteFull"

    const-string v0, "QQ\u7535\u8bdd"

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.tencent.av.ui.VideoInviteActivity"

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string v0, "\u5fae\u4fe1\u7535\u8bdd"

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
