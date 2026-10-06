.class Lcom/xiaomi/aicr/sdk/AiTranslateResult$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aicr/sdk/AiTranslateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/aicr/sdk/AiTranslateResult;",
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/aicr/sdk/AiTranslateResult;
    .locals 1

    new-instance v0, Lcom/xiaomi/aicr/sdk/AiTranslateResult;

    invoke-direct {v0}, Lcom/xiaomi/aicr/sdk/AiTranslateResult;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/aicr/sdk/AiTranslateResult;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/xiaomi/aicr/sdk/AiTranslateResult;
    .locals 0

    new-array p1, p1, [Lcom/xiaomi/aicr/sdk/AiTranslateResult;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/sdk/AiTranslateResult$a;->a(Landroid/os/Parcel;)Lcom/xiaomi/aicr/sdk/AiTranslateResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/sdk/AiTranslateResult$a;->b(I)[Lcom/xiaomi/aicr/sdk/AiTranslateResult;

    move-result-object p1

    return-object p1
.end method
