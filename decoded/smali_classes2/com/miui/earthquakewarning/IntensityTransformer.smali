.class public interface abstract Lcom/miui/earthquakewarning/IntensityTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/miui/earthquakewarning/IntensityTransformer;

.field public static final MMI_TRANSFORMER:Lcom/miui/earthquakewarning/IntensityTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/earthquakewarning/a;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/a;-><init>()V

    sput-object v0, Lcom/miui/earthquakewarning/IntensityTransformer;->MMI_TRANSFORMER:Lcom/miui/earthquakewarning/IntensityTransformer;

    new-instance v0, Lcom/miui/earthquakewarning/b;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/b;-><init>()V

    sput-object v0, Lcom/miui/earthquakewarning/IntensityTransformer;->DEFAULT:Lcom/miui/earthquakewarning/IntensityTransformer;

    return-void
.end method


# virtual methods
.method public abstract transform(Ljava/lang/Number;)Ljava/lang/Number;
.end method
