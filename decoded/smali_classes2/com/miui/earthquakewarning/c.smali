.class public final synthetic Lcom/miui/earthquakewarning/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/miui/earthquakewarning/IntensityTransformer;->MMI_TRANSFORMER:Lcom/miui/earthquakewarning/IntensityTransformer;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0xc

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    return-object p0
.end method
