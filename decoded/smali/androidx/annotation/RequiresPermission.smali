.class public interface abstract annotation Landroidx/annotation/RequiresPermission;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/annotation/RequiresPermission;
        allOf = {}
        anyOf = {}
        conditional = false
        value = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/annotation/RequiresPermission$Read;,
        Landroidx/annotation/RequiresPermission$Write;
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
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
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
        .enum Lpj/b;->b:Lpj/b;,
        .enum Lpj/b;->i:Lpj/b;,
        .enum Lpj/b;->j:Lpj/b;,
        .enum Lpj/b;->k:Lpj/b;,
        .enum Lpj/b;->h:Lpj/b;,
        .enum Lpj/b;->e:Lpj/b;,
        .enum Lpj/b;->g:Lpj/b;
    }
.end annotation


# virtual methods
.method public abstract allOf()[Ljava/lang/String;
.end method

.method public abstract anyOf()[Ljava/lang/String;
.end method

.method public abstract conditional()Z
.end method

.method public abstract value()Ljava/lang/String;
.end method
