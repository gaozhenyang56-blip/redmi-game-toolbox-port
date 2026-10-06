.class public Lcom/miui/autotask/taskitem/TypefaceResultItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskItem_TypefaceResultItem"


# instance fields
.field private defineValues:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private originValues:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->originValues:[I

    return-void
.end method

.method private x(Z)V
    .locals 13

    const-string v0, "TaskItem_TypefaceResultItem"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->defineValues:[I

    aget v2, v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->originValues:[I

    aget v2, v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->defineValues:[I

    aget v4, v4, v3

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->originValues:[I

    aget v4, v4, v3

    :goto_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v5

    invoke-static {v5, v4}, La4/e;->e(Landroid/content/Context;I)V

    const-class v6, Landroid/content/res/MiuiConfiguration;

    const-string v7, "KEY_VAR_FONT_SCALE"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "THEME_FLAG_VAR_FONT"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10, v7, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "sendThemeConfigurationChangeMsg"

    const/4 v7, 0x2

    new-array v11, v7, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v1

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v11, v3

    invoke-virtual {v6, v4, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v5, v2}, La4/e;->d(Landroid/content/Context;I)Z

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    aput-object v10, v2, v3

    invoke-virtual {v4, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isExecute=%b,originFontSize=%d,originFontWeight=%d,defineFontSize=%d,defineFontWeight=%d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    iget-object p1, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->originValues:[I

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    iget-object p1, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->originValues:[I

    aget p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v7

    const/4 p1, 0x3

    iget-object v5, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->defineValues:[I

    aget v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, p1

    const/4 p1, 0x4

    iget-object v1, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->defineValues:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, p1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "change font fail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f080441

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f080440

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_typeface_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121aec

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a61

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f080442

    return v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TypefaceResultItem;->v()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TypefaceResultItem;->v()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {}, La4/e;->a()I

    move-result v1

    invoke-static {v0}, La4/e;->c(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->originValues:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-direct {p0, v1}, Lcom/miui/autotask/taskitem/TypefaceResultItem;->x(Z)V

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/TypefaceResultItem;->x(Z)V

    return-void
.end method

.method public v()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->defineValues:[I

    return-object v0
.end method

.method public w([I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/TypefaceResultItem;->defineValues:[I

    return-void
.end method
