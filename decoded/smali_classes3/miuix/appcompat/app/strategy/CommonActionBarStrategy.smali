.class public Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IActionBarStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lmiuix/appcompat/app/ActionBar;Lmiuix/appcompat/app/strategy/ActionBarSpec;)Lmiuix/appcompat/app/strategy/ActionBarConfig;
    .locals 8

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    new-instance p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;

    invoke-direct {p1}, Lmiuix/appcompat/app/strategy/ActionBarConfig;-><init>()V

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidthDp:I

    iget-boolean v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->isInFloatingWindowMode:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v1, :cond_b

    const/16 v1, 0x3c0

    if-lt v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    int-to-float v1, v0

    iget v4, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    int-to-float v5, v4

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    cmpg-float v1, v1, v5

    const/16 v5, 0x280

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-gez v1, :cond_4

    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    const/16 v1, 0x19a

    if-ne p2, v7, :cond_1

    if-gt v4, v5, :cond_2

    :cond_1
    if-le v0, v1, :cond_3

    :cond_2
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    if-ge v0, v1, :cond_c

    goto :goto_0

    :cond_3
    iput-boolean v6, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    :goto_0
    iput v7, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_4

    :cond_4
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-ne v0, v7, :cond_5

    if-gt v4, v5, :cond_b

    :cond_5
    if-ne v0, v6, :cond_6

    iget v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    if-gt v4, v1, :cond_b

    :cond_6
    const/4 v1, 0x4

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_8

    :cond_7
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v4, 0x226

    if-gt v0, v4, :cond_8

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    iget v4, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    if-gt v0, v4, :cond_b

    :cond_8
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-ne v0, v1, :cond_9

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    iget v1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x14a

    if-gt v0, v1, :cond_9

    :goto_1
    goto :goto_2

    :cond_9
    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowMode:I

    invoke-static {v0}, Lbl/m;->c(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-eq v0, v7, :cond_a

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    int-to-float v0, v0

    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    const p2, 0x3fd9999a    # 1.7f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_c

    goto :goto_1

    :cond_a
    iput-boolean v6, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    goto :goto_3

    :cond_b
    :goto_2
    iput v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    iput-boolean v3, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    :cond_c
    :goto_3
    iput v2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method
