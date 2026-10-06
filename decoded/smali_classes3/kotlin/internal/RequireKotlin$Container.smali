.class public interface abstract annotation Lkotlin/internal/RequireKotlin$Container;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/internal/RequireKotlin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Container"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lpj/a;->a:Lpj/a;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lpj/b;->a:Lpj/b;,
        .enum Lpj/b;->i:Lpj/b;,
        .enum Lpj/b;->d:Lpj/b;,
        .enum Lpj/b;->h:Lpj/b;,
        .enum Lpj/b;->o:Lpj/b;
    }
.end annotation

.annotation runtime Lkotlin/jvm/internal/RepeatableContainer;
.end annotation


# virtual methods
.method public abstract value()[Lkotlin/internal/RequireKotlin;
.end method
