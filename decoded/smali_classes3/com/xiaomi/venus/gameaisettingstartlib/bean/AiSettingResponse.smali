.class public Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public code:I

.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->code:I

    iput-object p2, p0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
