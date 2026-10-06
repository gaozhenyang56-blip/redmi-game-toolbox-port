.class public Lci/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(ILjava/util/HashSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(ILci/d$a;)Lci/d;
    .locals 5

    sget-object v0, Lci/c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x3e7

    const/4 v1, 0x4

    const/4 v2, 0x5

    const v3, 0xffff

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p0, "Unknown type to be validate"

    goto/16 :goto_1

    :pswitch_0
    if-ltz p0, :cond_0

    const p1, 0xfffffff

    if-gt p0, p1, :cond_0

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WWAN_CELL_REGIONID4_WCDMA_LTE]Range: [1,268435455], current value: "

    goto :goto_0

    :pswitch_1
    if-lt p0, v4, :cond_1

    if-gt p0, v3, :cond_1

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    :pswitch_2
    if-ltz p0, :cond_2

    if-gt p0, v3, :cond_2

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WWAN_CELL_REGIONID4_CDMA_GSM]Range: [0,65535], current value: "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_3
    if-ltz p0, :cond_3

    if-gt p0, v3, :cond_3

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    const-string p0, "Cell ID3 out of range"

    goto/16 :goto_1

    :pswitch_4
    if-ltz p0, :cond_4

    if-gt p0, v0, :cond_4

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WWAN_CELL_REGIONID2_OTHERS]Range: [0,999], current value: "

    goto :goto_0

    :pswitch_5
    if-ltz p0, :cond_5

    const/16 p1, 0x7fff

    if-gt p0, p1, :cond_5

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WWAN_CELL_REGIONID2_CDMA]Range: [0,32767], current value: "

    goto :goto_0

    :pswitch_6
    if-ltz p0, :cond_6

    if-gt p0, v0, :cond_6

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WWAN_CELL_REGIONID1]Range: [0,999], current value: "

    goto :goto_0

    :pswitch_7
    if-ltz p0, :cond_7

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WIFI_CHANNEL_NUM]Range: >=0, current value: "

    goto :goto_0

    :pswitch_8
    if-lez p0, :cond_8

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WIFI_DELTA_TIME]Range: >0, current value: "

    goto :goto_0

    :pswitch_9
    if-ltz p0, :cond_9

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WIFI_DAYS_VALID]Range: >=0, current value: "

    goto/16 :goto_0

    :pswitch_a
    if-ltz p0, :cond_a

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WIFI_EXPIRE_DAYS]Range: >=0, current value: "

    goto/16 :goto_0

    :pswitch_b
    if-ltz p0, :cond_b

    if-ge p0, v3, :cond_b

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GEO_DWELL_TIME]Range: [0,65535), current value: "

    goto/16 :goto_0

    :pswitch_c
    new-array p1, v1, [I

    fill-array-data p1, :array_0

    invoke-static {p1}, Lci/c;->d([I)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p0, p1}, Lci/c;->a(ILjava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GEO_ENGINE_STATUS]Value set:1,2,3,4, current value: "

    goto/16 :goto_0

    :pswitch_d
    new-array p1, v1, [I

    fill-array-data p1, :array_1

    invoke-static {p1}, Lci/c;->d([I)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p0, p1}, Lci/c;->a(ILjava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GEO_ERROR_CODE]Value set:-100,-102,-103,-149,current value: "

    goto/16 :goto_0

    :pswitch_e
    new-array p1, v2, [I

    fill-array-data p1, :array_2

    invoke-static {p1}, Lci/c;->d([I)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p0, p1}, Lci/c;->a(ILjava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GEO_REQUEST_TYPE]Value set:1,2,3,4,5, current value: "

    goto/16 :goto_0

    :pswitch_f
    new-array p1, v2, [I

    fill-array-data p1, :array_3

    invoke-static {p1}, Lci/c;->d([I)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p0, p1}, Lci/c;->a(ILjava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GEO_EVENT]Value set:1,2,4,8,16, current value: "

    goto/16 :goto_0

    :pswitch_10
    const/16 p1, 0x3e8

    if-lt p0, p1, :cond_10

    const p1, 0x3e7fc18

    if-gt p0, p1, :cond_10

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GEO_RESPONSIVENESS]Range: [1000,65535000], current value: "

    goto/16 :goto_0

    :pswitch_11
    new-array p1, v2, [I

    fill-array-data p1, :array_4

    invoke-static {p1}, Lci/c;->d([I)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p0, p1}, Lci/c;->a(ILjava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FLP_POWER_MODE]Value Set:1,2,3,4,5, current value: "

    goto/16 :goto_0

    :pswitch_12
    if-lez p0, :cond_12

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FLP_DISTANCE_INTERVAL]Range: >0, current value: "

    goto/16 :goto_0

    :pswitch_13
    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_5

    invoke-static {p1}, Lci/c;->d([I)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p0, p1}, Lci/c;->a(ILjava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p0, Lci/d;

    invoke-direct {p0, v4}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FLP STATUS]Value set: 0,1,2, current value: "

    goto/16 :goto_0

    :goto_1
    new-instance p1, Lci/d;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lci/d;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lci/d;->d()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        -0x64
        -0x66
        -0x67
        -0x95
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public static c(JLci/d$a;)Lci/d;
    .locals 3

    sget-object v0, Lci/c$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    packed-switch p2, :pswitch_data_0

    const-string p0, "Unknown type to be validate"

    goto :goto_1

    :pswitch_0
    cmp-long p2, p0, v1

    if-lez p2, :cond_0

    new-instance p0, Lci/d;

    invoke-direct {p0, v0}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FLP_TBM_MILLIS]Range: >0, current value: "

    goto :goto_0

    :pswitch_1
    cmp-long p2, p0, v1

    if-lez p2, :cond_1

    new-instance p0, Lci/d;

    invoke-direct {p0, v0}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FLP_TRIP_DISTANCE]Range: >0, current value: "

    goto :goto_0

    :pswitch_2
    cmp-long p2, p0, v1

    if-lez p2, :cond_2

    new-instance p0, Lci/d;

    invoke-direct {p0, v0}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FLP_TIME_INTERVAL]Range: >0, current value: "

    goto :goto_0

    :pswitch_3
    cmp-long p2, p0, v1

    if-lez p2, :cond_3

    new-instance p0, Lci/d;

    invoke-direct {p0, v0}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[LOCATION_TIME]Range: >0, current value: "

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p1, Lci/d;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lci/d;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lci/d;->d()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d([I)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
