.class Landroidx/core/widget/TextViewCompat$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method static a(Landroid/text/PrecomputedText;)Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    return-object p0
.end method

.method static b(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0}, Landroidx/core/widget/s;->a(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0}, Landroidx/core/widget/r;->a(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/widget/TextView;I)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/widget/t;->a(Landroid/widget/TextView;I)V

    return-void
.end method
