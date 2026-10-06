.class public Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenBrightnessResultItem"


# instance fields
.field private brightness:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private originBrightness:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->originBrightness:I

    return-void
.end method

.method private static w()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static x(I)I
    .locals 2

    invoke-static {}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->w()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/m;->m(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->w()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lx4/m;->k(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lx4/m;->d(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f08042c

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f08042b

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_screen_brightness_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1218d6

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a5b

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f08042d

    return v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->v()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 3

    invoke-static {}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->w()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/m;->i(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->originBrightness:I

    invoke-static {}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->w()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->v()I

    move-result v1

    invoke-static {v0, v1}, Lx4/m;->r(Landroid/content/Context;I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->originBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->v()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "perform: originBrightness=%d,brightness=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenBrightnessResultItem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public o()V
    .locals 3

    iget v0, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->originBrightness:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->w()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->originBrightness:I

    invoke-static {v0, v1}, Lx4/m;->r(Landroid/content/Context;I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->originBrightness:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "reset: originBrightness=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenBrightnessResultItem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->brightness:I

    return v0
.end method

.method public y(I)V
    .locals 2

    iput p1, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->brightness:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenBrightnessResultItem"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public z()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBrightness: before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->brightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenBrightnessResultItem"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->brightness:I

    invoke-static {v0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->x(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    const v1, 0xffff

    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->y(I)V

    return-void
.end method
