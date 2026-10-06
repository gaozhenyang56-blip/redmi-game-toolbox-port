.class public final Lcom/miui/gamebooster/guide/CasualModeGuide$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "gb_casual_guide_recall_toast_show_times"

    goto :goto_0

    :cond_1
    const-string p1, "gb_casual_guide_in_game_toast_show_times"

    goto :goto_0

    :cond_2
    const-string p1, "gb_casual_guide_toast_show_times"

    :goto_0
    invoke-static {p1, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    return v1
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "gb_casual_guide_recall_toast_show_times"

    goto :goto_0

    :cond_1
    const-string p1, "gb_casual_guide_in_game_toast_show_times"

    goto :goto_0

    :cond_2
    const-string p1, "gb_casual_guide_toast_show_times"

    :goto_0
    invoke-static {p1, p2}, Lr4/a;->p(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
