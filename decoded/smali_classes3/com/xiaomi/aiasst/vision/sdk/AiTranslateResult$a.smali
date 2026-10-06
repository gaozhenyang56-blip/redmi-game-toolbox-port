.class Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;
    .locals 1

    new-instance v0, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;

    invoke-direct {v0}, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;
    .locals 0

    new-array p1, p1, [Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult$a;->a(Landroid/os/Parcel;)Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult$a;->b(I)[Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;

    move-result-object p1

    return-object p1
.end method
