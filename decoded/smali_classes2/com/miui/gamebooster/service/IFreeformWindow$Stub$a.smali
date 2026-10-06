.class Lcom/miui/gamebooster/service/IFreeformWindow$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/service/IFreeformWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/IFreeformWindow$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static k:Lcom/miui/gamebooster/service/IFreeformWindow;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/service/IFreeformWindow$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public L3(Z)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.gamebooster.service.IFreeformWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/IFreeformWindow$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/service/IFreeformWindow$Stub;->v1()Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/service/IFreeformWindow$Stub;->v1()Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/gamebooster/service/IFreeformWindow;->L3(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public Y7(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.gamebooster.service.IFreeformWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/IFreeformWindow$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/service/IFreeformWindow$Stub;->v1()Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/service/IFreeformWindow$Stub;->v1()Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/gamebooster/service/IFreeformWindow;->Y7(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/IFreeformWindow$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
