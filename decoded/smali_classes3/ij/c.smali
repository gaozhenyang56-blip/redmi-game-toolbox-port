.class public final synthetic Lij/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lij/d$a;


# direct methods
.method public synthetic constructor <init>(Lij/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij/c;->a:Lij/d$a;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lij/c;->a:Lij/d$a;

    invoke-static {v0}, Lij/d$a;->b(Lij/d$a;)V

    return-void
.end method
