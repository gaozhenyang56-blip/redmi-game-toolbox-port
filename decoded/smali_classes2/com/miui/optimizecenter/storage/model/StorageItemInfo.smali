.class public Lcom/miui/optimizecenter/storage/model/StorageItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;,
        Lcom/miui/optimizecenter/storage/model/StorageItemInfo$ItemType;
    }
.end annotation


# instance fields
.field public a:I

.field private b:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->a:I

    return-void
.end method

.method static synthetic a(Lcom/miui/optimizecenter/storage/model/StorageItemInfo;I)I
    .locals 0

    iput p1, p0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->b:I

    return p1
.end method

.method public static b(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo;
    .locals 2

    new-instance v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    invoke-direct {v0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;-><init>()V

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    goto/16 :goto_1

    :pswitch_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f12187b

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->d(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f060d85

    goto/16 :goto_0

    :pswitch_2
    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f121877

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->d(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f060d66

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f121873

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->d(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f060d49

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f12187c

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->d(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f060d86

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f121875

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->d(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f060d5b

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f121879

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->d(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f060d79

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f121874

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->d(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f060d5a

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->c(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const-string v1, "miui.intent.action.STORAGE_APP_INFO_LIST"

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->b(Ljava/lang/String;)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    goto :goto_1

    :pswitch_8
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f121878

    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->d(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    move-result-object p0

    const v1, 0x7f060d78

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->c(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;

    :goto_1
    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    return-wide v0
.end method
