.class public Lcom/miui/antispam/db/vo/ProvinceVo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private checkedCityNumbers:I

.field private cityList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "l"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antispam/db/vo/CityVo;",
            ">;"
        }
    .end annotation
.end field

.field private isChecked:Z

.field private provinceCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private provinceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/miui/antispam/db/vo/CityVo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->provinceName:Ljava/lang/String;

    iput p2, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->provinceCode:I

    iput-object p3, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->cityList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCheckedCityNumbers(I)V
    .locals 1

    iget v0, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->checkedCityNumbers:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->checkedCityNumbers:I

    return-void
.end method

.method public getCheckedCityNumbers()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->checkedCityNumbers:I

    return v0
.end method

.method public getCityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antispam/db/vo/CityVo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->cityList:Ljava/util/List;

    return-object v0
.end method

.method public getProvinceCode()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->provinceCode:I

    return v0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->isChecked:Z

    return-void
.end method

.method public setCityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/antispam/db/vo/CityVo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->cityList:Ljava/util/List;

    return-void
.end method

.method public setProvinceCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->provinceCode:I

    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/db/vo/ProvinceVo;->provinceName:Ljava/lang/String;

    return-void
.end method
