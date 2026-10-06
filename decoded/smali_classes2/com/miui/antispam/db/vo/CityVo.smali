.class public Lcom/miui/antispam/db/vo/CityVo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cityCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private cityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field private isChecked:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/db/vo/CityVo;->cityName:Ljava/lang/String;

    iput p2, p0, Lcom/miui/antispam/db/vo/CityVo;->cityCode:I

    return-void
.end method


# virtual methods
.method public getCityCode()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/db/vo/CityVo;->cityCode:I

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/db/vo/CityVo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antispam/db/vo/CityVo;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antispam/db/vo/CityVo;->isChecked:Z

    return-void
.end method

.method public setCityCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antispam/db/vo/CityVo;->cityCode:I

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/db/vo/CityVo;->cityName:Ljava/lang/String;

    return-void
.end method
