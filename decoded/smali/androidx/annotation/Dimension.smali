.class public interface abstract annotation Landroidx/annotation/Dimension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/annotation/Dimension;
        unit = 0x1
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/annotation/Dimension$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/annotation/MustBeDocumented;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lpj/a;->b:Lpj/a;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lpj/b;->i:Lpj/b;,
        .enum Lpj/b;->j:Lpj/b;,
        .enum Lpj/b;->k:Lpj/b;,
        .enum Lpj/b;->g:Lpj/b;,
        .enum Lpj/b;->e:Lpj/b;,
        .enum Lpj/b;->f:Lpj/b;,
        .enum Lpj/b;->b:Lpj/b;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/annotation/Dimension$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DP:I = 0x0

.field public static final PX:I = 0x1

.field public static final SP:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/annotation/Dimension$a;->a:Landroidx/annotation/Dimension$a;

    sput-object v0, Landroidx/annotation/Dimension;->Companion:Landroidx/annotation/Dimension$a;

    return-void
.end method


# virtual methods
.method public abstract unit()I
.end method
