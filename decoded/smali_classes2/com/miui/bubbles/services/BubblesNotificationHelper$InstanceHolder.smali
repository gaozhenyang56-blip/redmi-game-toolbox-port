.class Lcom/miui/bubbles/services/BubblesNotificationHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/services/BubblesNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/bubbles/services/BubblesNotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/bubbles/services/BubblesNotificationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/bubbles/services/BubblesNotificationHelper;-><init>(Lcom/miui/bubbles/services/BubblesNotificationHelper$1;)V

    sput-object v0, Lcom/miui/bubbles/services/BubblesNotificationHelper$InstanceHolder;->sInstance:Lcom/miui/bubbles/services/BubblesNotificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/miui/bubbles/services/BubblesNotificationHelper;
    .locals 1

    sget-object v0, Lcom/miui/bubbles/services/BubblesNotificationHelper$InstanceHolder;->sInstance:Lcom/miui/bubbles/services/BubblesNotificationHelper;

    return-object v0
.end method
