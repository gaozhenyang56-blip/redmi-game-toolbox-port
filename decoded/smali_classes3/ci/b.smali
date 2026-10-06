.class public Lci/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(FLci/d$a;)Lci/d;
    .locals 2

    sget-object v0, Lci/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p0, "Unknown type to be validate"

    goto/16 :goto_1

    :pswitch_0
    cmpl-float p1, p0, v0

    if-lez p1, :cond_0

    new-instance p0, Lci/d;

    invoke-direct {p0, v1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WWAN_HORIZONTAL_COV_RADIUS]Range: >0, current value: "

    goto/16 :goto_0

    :pswitch_1
    const/high16 p1, -0x3d000000    # -128.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_1

    const/high16 p1, 0x42fe0000    # 127.0f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_1

    new-instance p0, Lci/d;

    invoke-direct {p0, v1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WIFI_RSSI]Range: (-128,127), current value: "

    goto/16 :goto_0

    :pswitch_2
    cmpl-float p1, p0, v0

    if-lez p1, :cond_2

    new-instance p0, Lci/d;

    invoke-direct {p0, v1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    const-string p0, "Wrong wifi max antena range"

    goto/16 :goto_1

    :pswitch_3
    cmpl-float p1, p0, v0

    if-lez p1, :cond_3

    new-instance p0, Lci/d;

    invoke-direct {p0, v1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GEO_RADIUS]Range: >0, current value: "

    goto/16 :goto_0

    :pswitch_4
    cmpl-float p1, p0, v0

    if-lez p1, :cond_4

    new-instance p0, Lci/d;

    invoke-direct {p0, v1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[LOCATION_ACCURACY]Range: >0, current value: "

    goto :goto_0

    :pswitch_5
    cmpl-float p1, p0, v0

    if-lez p1, :cond_5

    const/high16 p1, 0x43b40000    # 360.0f

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_5

    new-instance p0, Lci/d;

    invoke-direct {p0, v1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[LOCATION_BEARING]Range: (0,360], current value: "

    goto :goto_0

    :pswitch_6
    cmpl-float p1, p0, v0

    if-ltz p1, :cond_6

    new-instance p0, Lci/d;

    invoke-direct {p0, v1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[LOCATION_SPEED]Range: >=0, current value: "

    goto :goto_0

    :pswitch_7
    const/high16 p1, -0x3ccc0000    # -180.0f

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_7

    const/high16 p1, 0x43340000    # 180.0f

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_7

    new-instance p0, Lci/d;

    invoke-direct {p0, v1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[LOCATION_LONGITUDE]Range: [-180,180], current value: "

    goto :goto_0

    :pswitch_8
    const/high16 p1, -0x3d4c0000    # -90.0f

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_8

    const/high16 p1, 0x42b40000    # 90.0f

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_8

    new-instance p0, Lci/d;

    invoke-direct {p0, v1}, Lci/d;-><init>(Z)V

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[LOCATION_LATITUDE]Range: [-90,90], current value: "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p1, Lci/d;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lci/d;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lci/d;->d()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
