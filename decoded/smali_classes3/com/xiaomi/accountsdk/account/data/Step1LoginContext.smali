.class public Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;,
        Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

.field private mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->b:Ljava/lang/String;

    new-instance v1, Lfi/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lfi/b;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->c:Lfi/b;

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->c:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lei/a;

    if-eqz v0, :cond_0

    check-cast p1, Lei/a;

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;-><init>()V

    invoke-virtual {p1}, Lei/a;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lei/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lei/a;->a()Lfi/b;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->c:Lfi/b;

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lei/b;

    if-eqz v0, :cond_1

    check-cast p1, Lei/b;

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->c:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;-><init>()V

    invoke-virtual {p1}, Lei/b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lei/b;->a()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1}, Lei/b;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->c:Ljava/lang/String;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLoginContext()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    return-object v0
.end method

.method public getNextStep()Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mNextStep:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->b:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    check-cast p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$d;->c:Lfi/b;

    invoke-virtual {p2}, Lfi/b;->a()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->c:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    if-ne v0, v1, :cond_1

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    check-cast p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->sign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->qs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->b:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->callback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$f;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;->a:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$e;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->mLoginContext:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$b;

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$c;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_2
    :goto_1
    return-void
.end method
