.class public interface abstract annotation Landroidx/annotation/Size;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/annotation/Size;
        max = 0x7fffffffffffffffL
        min = -0x8000000000000000L
        multiple = 0x1L
        value = -0x1L
    .end subannotation
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
        .enum Lpj/b;->g:Lpj/b;,
        .enum Lpj/b;->f:Lpj/b;,
        .enum Lpj/b;->i:Lpj/b;,
        .enum Lpj/b;->j:Lpj/b;,
        .enum Lpj/b;->k:Lpj/b;,
        .enum Lpj/b;->e:Lpj/b;,
        .enum Lpj/b;->b:Lpj/b;
    }
.end annotation


# virtual methods
.method public abstract max()J
.end method

.method public abstract min()J
.end method

.method public abstract multiple()J
.end method

.method public abstract value()J
.end method
