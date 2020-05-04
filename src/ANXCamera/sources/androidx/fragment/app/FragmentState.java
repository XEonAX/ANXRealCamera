package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.lifecycle.e;

@SuppressLint({"BanParcelableUsage"})
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() {
        /* renamed from: a */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* renamed from: a */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    };
    final Bundle mArguments;
    final String mClassName;
    final int mContainerId;
    final boolean mDetached;
    final int mFragmentId;
    final boolean mFromLayout;
    final boolean mHidden;
    Fragment mInstance;
    final int mMaxLifecycleState;
    final boolean mRemoving;
    final boolean mRetainInstance;
    Bundle mSavedFragmentState;
    final String mTag;
    final String mWho;

    FragmentState(Parcel parcel) {
        this.mClassName = parcel.readString();
        this.mWho = parcel.readString();
        boolean z = true;
        this.mFromLayout = parcel.readInt() != 0;
        this.mFragmentId = parcel.readInt();
        this.mContainerId = parcel.readInt();
        this.mTag = parcel.readString();
        this.mRetainInstance = parcel.readInt() != 0;
        this.mRemoving = parcel.readInt() != 0;
        this.mDetached = parcel.readInt() != 0;
        this.mArguments = parcel.readBundle();
        this.mHidden = parcel.readInt() == 0 ? false : z;
        this.mSavedFragmentState = parcel.readBundle();
        this.mMaxLifecycleState = parcel.readInt();
    }

    FragmentState(Fragment fragment) {
        this.mClassName = fragment.getClass().getName();
        this.mWho = fragment.o;
        this.mFromLayout = fragment.v;
        this.mFragmentId = fragment.E;
        this.mContainerId = fragment.F;
        this.mTag = fragment.G;
        this.mRetainInstance = fragment.J;
        this.mRemoving = fragment.u;
        this.mDetached = fragment.I;
        this.mArguments = fragment.p;
        this.mHidden = fragment.H;
        this.mMaxLifecycleState = fragment.Z.ordinal();
    }

    public int describeContents() {
        return 0;
    }

    public Fragment instantiate(ClassLoader classLoader, f fVar) {
        if (this.mInstance == null) {
            Bundle bundle = this.mArguments;
            if (bundle != null) {
                bundle.setClassLoader(classLoader);
            }
            this.mInstance = fVar.c(classLoader, this.mClassName);
            this.mInstance.g(this.mArguments);
            Bundle bundle2 = this.mSavedFragmentState;
            if (bundle2 != null) {
                bundle2.setClassLoader(classLoader);
                this.mInstance.l = this.mSavedFragmentState;
            } else {
                this.mInstance.l = new Bundle();
            }
            Fragment fragment = this.mInstance;
            fragment.o = this.mWho;
            fragment.v = this.mFromLayout;
            fragment.x = true;
            fragment.E = this.mFragmentId;
            fragment.F = this.mContainerId;
            fragment.G = this.mTag;
            fragment.J = this.mRetainInstance;
            fragment.u = this.mRemoving;
            fragment.I = this.mDetached;
            fragment.H = this.mHidden;
            fragment.Z = e.b.values()[this.mMaxLifecycleState];
            if (i.f689b) {
                Log.v("FragmentManager", "Instantiated fragment " + this.mInstance);
            }
        }
        return this.mInstance;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.mClassName);
        sb.append(" (");
        sb.append(this.mWho);
        sb.append(")}:");
        if (this.mFromLayout) {
            sb.append(" fromLayout");
        }
        if (this.mContainerId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mContainerId));
        }
        String str = this.mTag;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        if (this.mRetainInstance) {
            sb.append(" retainInstance");
        }
        if (this.mRemoving) {
            sb.append(" removing");
        }
        if (this.mDetached) {
            sb.append(" detached");
        }
        if (this.mHidden) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mClassName);
        parcel.writeString(this.mWho);
        parcel.writeInt(this.mFromLayout ? 1 : 0);
        parcel.writeInt(this.mFragmentId);
        parcel.writeInt(this.mContainerId);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.mRetainInstance ? 1 : 0);
        parcel.writeInt(this.mRemoving ? 1 : 0);
        parcel.writeInt(this.mDetached ? 1 : 0);
        parcel.writeBundle(this.mArguments);
        parcel.writeInt(this.mHidden ? 1 : 0);
        parcel.writeBundle(this.mSavedFragmentState);
        parcel.writeInt(this.mMaxLifecycleState);
    }
}
