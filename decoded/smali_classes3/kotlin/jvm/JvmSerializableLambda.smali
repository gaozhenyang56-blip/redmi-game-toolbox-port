.class public interface abstract annotation Lkotlin/jvm/JvmSerializableLambda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.8"
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lpj/a;->a:Lpj/a;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lpj/b;->m:Lpj/b;
    }
.end annotation
