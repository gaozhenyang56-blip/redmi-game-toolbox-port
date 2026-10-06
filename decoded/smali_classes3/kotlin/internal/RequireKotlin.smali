.class public interface abstract annotation Lkotlin/internal/RequireKotlin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lkotlin/internal/RequireKotlin;
        errorCode = -0x1
        level = .enum Loj/a;->b:Loj/a;
        message = ""
        versionKind = .enum Lvj/d;->a:Lvj/d;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/internal/RequireKotlin$Container;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Lkotlin/internal/RequireKotlin$Container;
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

.annotation build Lkotlin/SinceKotlin;
    version = "1.2"
.end annotation

.annotation runtime Lkotlin/annotation/Repeatable;
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


# virtual methods
.method public abstract errorCode()I
.end method

.method public abstract level()Loj/a;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract version()Ljava/lang/String;
.end method

.method public abstract versionKind()Lvj/d;
.end method
