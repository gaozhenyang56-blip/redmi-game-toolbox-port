.class public Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Lcom/miui/luckymoney/webapi/UploadSettingResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Lcom/miui/luckymoney/webapi/UploadSettingResult;
    .locals 4

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/net/b;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getImeiMd5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/common/net/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "m"

    invoke-direct {v1, v3, v2}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    const-string v3, "rpStatus"

    invoke-direct {v1, v3, p1}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "21dd76da-224c-2314-ac60-abcd70139283"

    invoke-static {v0, p1}, Lcom/miui/common/net/d;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/miui/common/net/b;

    const-string v3, "sign"

    invoke-direct {v1, v3, p1}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/net/b;

    if-nez v1, :cond_2

    const-string v1, "&"

    goto :goto_2

    :cond_2
    const-string v1, "?"

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/common/net/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/common/net/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.sec.miui.com/redPacket/reportStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lp4/i;

    const-string v1, "luckymoney_reportstatus"

    invoke-direct {v0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/miui/common/net/a;->a(Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/miui/luckymoney/webapi/UploadSettingResult;

    invoke-direct {v0, p1}, Lcom/miui/luckymoney/webapi/UploadSettingResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/luckymoney/webapi/UploadConfigAsyncTask;->doInBackground([Ljava/lang/Boolean;)Lcom/miui/luckymoney/webapi/UploadSettingResult;

    move-result-object p1

    return-object p1
.end method
